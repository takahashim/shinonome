# frozen_string_literal: true

module Idlists
  class WorkersController < ApplicationController
    include Pagy::Backend

    def index
      key = "#{params[:key]&.slice(0, 1)}%"
      workers = Worker.where('name_kana like ?', key).order(:sortkey, :name_kana, :name, :id)
      @pagy, @workers = pagy(workers.all)
    end
  end
end
