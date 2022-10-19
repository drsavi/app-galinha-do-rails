class Bagmon
    def initialize(bag)
        Bagmon.create_method(bag)
    end

    def self.create_method(bag)
        define_method :"bagmon_#{bag.downcase}" do
            "Olá, eu sou o #{bag}, um bagmon da bagdex!"
        end
    end
end

puts "============Digite o Bagmon"
bagmon=gets.chomp
novaClasse = Bagmon.new(bagmon)

puts novaClasse.send("bagmon_#{bagmon.to_s.downcase}")
