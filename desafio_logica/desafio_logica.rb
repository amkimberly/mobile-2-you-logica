class Extraction
    attr_reader :expression
    
    def initialize(expression)
        @expression = expression
    end

    def count_diamonds_and_sands
        extracted_expression = self.expression.scan(/<>|\./)
        diamonds = extracted_expression.count("<>")
        puts "Essa é a expressão após a extração de areias e diamantes: \n #{extracted_expression}"
        puts "\n Foram encontrados #{diamonds} diamantes na extração"
    end
end

first_extraction = Extraction.new("<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>")
first_extraction.count_diamonds_and_sands
