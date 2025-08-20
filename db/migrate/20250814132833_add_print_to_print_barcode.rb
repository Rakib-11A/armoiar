class AddPrintToPrintBarcode < ActiveRecord::Migration[8.0]
  def change
    add_reference :print_barcodes, :print, foreign_key: true
  end
end
