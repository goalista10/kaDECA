# frozen_string_literal: true

class HomeController < ApplicationController
  def homepage
    @all = Feature.all
  end

  def shop; end

  def blog; end

  def contact; end
end
