# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage
    @feature1 = Feature.find(1)
  end

  def shop; end

  def blog; end

  def contact; end
end
