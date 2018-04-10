class CreateMedicalDeviceBuzzers < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_device_buzzers do |t|
      
      t.boolean :buzzer
      t.boolean :buzzer_ack
      t.boolean :buzzer_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :medical_device_id
      t.timestamps
    end
  end
end