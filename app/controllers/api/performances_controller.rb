module Api
  class PerformancesController < ApplicationController
    def index
      respond_with Performance.order(time: :asc)
                              .select { |p| p.time.wday == 5 }
    end
  end
end
