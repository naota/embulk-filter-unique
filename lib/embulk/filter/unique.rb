require 'set'

module Embulk
  module Filter

    class Unique < FilterPlugin
      Plugin.register_filter("unique", self)

      def self.transaction(config, in_schema, &control)
	task = {
	  "columns" => config.param("columns", :array),
	}

	yield(task, in_schema)
      end

      def init
	@cols = task["columns"]
	@exists = Set.new
      end

      def close
      end

      def add(page)
	page.each do |record|
	  part = {}
	  @cols.each do |c|
	    cs = page.schema.select{|s| s.name == c}
	    idx = cs[0].index
	    part[c] = record[idx]
	  end

	  unless @exists.include?(part)
	    page_builder.add(record)
	    @exists.add(part)
	  end
	end
      end

      def finish
	page_builder.finish
      end
    end

  end
end
