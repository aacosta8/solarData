class PredictionController < ApplicationController
  def new

  end

  def predict
    start_date = calcular_params[:start_date]
    end_date = calcular_params[:end_date]

    # month1,day1,year1 = start_date.split(" ")[0].split("/").map { |n| n.to_i }
    # month2,day2,year2 = end_date.split(" ")[0].split("/").map { |n| n.to_i }
    #
    # time1 = Time.utc(year1,month1,day1)
    # time2 = Time.utc(year2,month2,day2)

    area = calcular_params[:area].to_f
    rendimiento = calcular_params[:rendimiento].to_f

    @date = helpers.predict(start_date,end_date).unshift( ['Date', 'Radiation'])
    hours = @date.size*15/60
    p @date
    gon.date = @date

    sum = 0
    helpers.predict(start_date,end_date).each { |r| sum += r[1].to_f*15/60}
    p sum

    @energia = (((sum*area*(rendimiento/100)))/1000).round(2) #kWh
    @dias = (DateTime.strptime(end_date, '%m/%d/%Y %H:%M') - DateTime.strptime(start_date, '%m/%d/%Y %H:%M') +1).to_i
    @avrDia = (@energia/@dias).round(2) #kWh/dias
  end

  private

  def calcular_params
    params.permit(:start_date,:end_date,:area,:rendimiento)
  end
end
