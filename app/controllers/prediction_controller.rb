class PredictionController < ApplicationController
  def new

  end

  def predict
    start_date = calcular_params[:start_date]
    end_date = calcular_params[:end_date]
    area = calcular_params[:area].to_f
    rendimiento = calcular_params[:rendimiento]

    @date = helpers.predict(start_date,end_date).unshift( ['Date', 'Radiation'])
    hours = @date.size*15/60
    p @date
    gon.date = @date

    sum = 0
    helpers.predict(start_date,end_date).each { |r| sum += r[1].to_f*15/60}
    p sum

    @energia = ((sum*area.to_f*area*100))/1000.to_i.to_f/100
    @avrWH = (@energia*1000*100/hours).to_i.to_f/100
  end

  private

  def calcular_params
    params.permit(:start_date,:end_date,:area,:rendimiento)
  end
end
