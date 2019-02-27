class Definition
    # This class stores a collection of definitions as an array of hashes. It's basically a dictionary.
    def initialize
        @entries = []
    end
    def add_word(word, definition) # Stores an entry in this object. A less-than-informative name is used for this method so that this program passes the bundled tests.
        @entries << {:word => word, :definition => definition}
    end
    def total_words # Returns the number of entries in this object
        return @entries.length
    end
    def lookup(word) # Searches every entry for a word and returns its definition. If no match is found, returns nil.
        definition = nil
        for entry in @entries do
            if entry[:word] == word
                definition = entry[:definition]
            end
        end
        return definition
    end
end