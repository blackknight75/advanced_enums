class VendingMachine
  attr_reader :inventory

  def initialize
    @inventory = Array.new
  end

  def add_snack(snack)
    @inventory << snack
  end

  def snacks_by_name
    names = @inventory.map {|snack| snack.name }    
  end

end
