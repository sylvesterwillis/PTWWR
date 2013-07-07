# my_string_extend_slw.rb
class String
    def djb2Hash
        self.split("").each do |c|
            hashConst = 5381
            hashConst = ((hashConst << 5) + hashConst) + c.ord
            return hashConst
        end
    end
end
