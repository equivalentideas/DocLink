class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def search

  end
end
