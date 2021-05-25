# frozen_string_literal: true
class Buyer::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: [:name, :email, :password])
      permit(:account_update, keys: [:name, :email, :password])
    end
  end

  class Seller::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: [:name, :email, :password,:contact,:blk,:lot,:fb])
      permit(:account_update, keys: [:name, :email, :password,:contact,:blk,:lot,:fb])
    end
  end

class ApplicationController < ActionController::Base
    protected
  
    def devise_parameter_sanitizer
      if resource_class == Buyer
        Buyer::ParameterSanitizer.new(Buyer, :buyer, params)
      elsif resource_class == Seller
        Seller::ParameterSanitizer.new(Seller, :seller, params)
      else
        super # Use the default one
      end
    end

    def after_sign_in_path_for(resource)
      if resource.to_s.include? 'dmin'
        admin_dashboard_path
      elsif resource.to_s.include? 'ell'
        sellers_dashboard_path
      else
        root_path
      end
    end
  end
