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

  def how_many_snacks
    @inventory.group_by {|snack| snack.quantity}
  end

  def inventory_by_alphabet
    @inventory.group_by {|snack| snack.name[0]}
  end

  def total_num_items
    @inventory.reduce(0) {|memo, snack| memo + snack.quantity}
  end

end
