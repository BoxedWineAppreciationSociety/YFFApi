module Api
  class PerformancesController < ApplicationController
    def index
      wday = case params["day"]
      when "fri"
        [5]
      when "sat"
        [6]
      when "sun"
        [0]
      else
        (0..6)
      end

      respond_with Performance.order(time: :asc)
                              .select { |p| wday.include? p.time.wday }
    end
  end
end
