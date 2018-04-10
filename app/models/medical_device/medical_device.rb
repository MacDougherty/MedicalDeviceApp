module MedicalDevice
  class MedicalDevice < ApplicationRecord
    
      
        
          has_one :buzzer, dependent: :destroy
          accepts_nested_attributes_for :buzzer
        
          has_one :heart_rate_sensor, dependent: :destroy
          accepts_nested_attributes_for :heart_rate_sensor
        
          has_one :galvanic_skin_response_sensor, dependent: :destroy
          accepts_nested_attributes_for :galvanic_skin_response_sensor
        
          has_one :four_digit_display, dependent: :destroy
          accepts_nested_attributes_for :four_digit_display
        
      
    
  end
end