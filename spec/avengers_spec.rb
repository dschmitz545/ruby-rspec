require_relative '../app/avenger'


# TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.adicionar("SpiderMan")
        expect(hq.list).to eql ["SpiderMan"]
        expect(hq.list).to include "SpiderMan"
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.adicionar("Thor")
        hq.adicionar("Viuva Negra")
        hq.adicionar("Capitão América")

        expect(hq.list).to include 'Thor'
        expect(hq.list).to include 'Viuva Negra'
        expect(hq.list.size).to be > 0
        
        resu = hq.list.size > 0
        expect(resu).to be true

    end

    it 'Thor deve ser o primeiro da Lista' do
        hq = AvengersHeadQuarter.new
        hq.adicionar("Thor")
        hq.adicionar("Viuva Negra")
        hq.adicionar("Hulk")

        expect(hq.list).to end_with("Hulk")
    end

    it 'Hulk deve ser o ultimo da Lista' do
        hq = AvengersHeadQuarter.new
        hq.adicionar("Thor")
        hq.adicionar("Viuva Negra")
        hq.adicionar("Hulk")

        expect(hq.list).to end_with("Hulk")
    end

    it 'deve conter o sobrenome' do

        avenger = "Peter Parker"

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Steve/)

    end
end
