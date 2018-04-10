class CreateMedicalDeviceHeartRateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_device_heart_rate_sensors do |t|
      
      t.integer :data
      t.boolean :data_ack
      t.boolean :data_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :medical_device_id
      t.timestamps
    end
  end
end