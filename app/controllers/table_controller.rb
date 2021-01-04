class TableController < ApplicationController
  def input
  end

  def view_one
    input_name=params[:name]
    input_prof=params[:prof]
    input_time=params[:time]
    input_day=params[:day]
    input_cab=params[:cab]
      cached_result = CachedResult.new
      cached_result.name = input_name
      cached_result.profession = input_prof
      cached_result.day = input_day
      cached_result.time = input_time
      cached_result.cabinet = input_cab
      cached_result.save!


    id_mon=[]
    @id_mon=[]
    CachedResult.all.each do |inst|
      if inst.day == "Mon"
        id_mon<<[inst.time,inst.name,inst.profession,inst.cabinet]
      end
    end
    id_mon=id_mon.sort_by{ |a| a.first.to_i }
    @id_mon=id_mon

    id_tue=[]
    @id_tue=[]
    CachedResult.all.each do |inst|
      if inst.day == "Tue"
        id_tue<<[inst.time,inst.name,inst.profession,inst.cabinet]
      end
    end
    id_tue=id_tue.sort_by{ |a| a.first.to_i }
    @id_tue=id_tue

    id_wed=[]
    @id_wed=[]
    CachedResult.all.each do |inst|
      if inst.day == "Wed"
        id_wed<<[inst.time,inst.name,inst.profession,inst.cabinet]
      end
    end
    id_wed=id_wed.sort_by{ |a| a.first.to_i }
    @id_wed=id_wed

    id_thu=[]
    @id_thu=[]
    CachedResult.all.each do |inst|
      if inst.day == "Thu"
        id_thu<<[inst.time,inst.name,inst.profession,inst.cabinet]
      end
    end
    id_thu=id_thu.sort_by{ |a| a.first.to_i }
    @id_thu=id_thu

    id_fri=[]
    @id_fri=[]
    CachedResult.all.each do |inst|
      if inst.day == "Fri"
        id_fri<<[inst.time,inst.name,inst.profession,inst.cabinet]
      end
    end
    id_fri=id_fri.sort_by{ |a| a.first.to_i }
    @id_fri=id_fri

    id_sat=[]
    @id_sat=[]
    CachedResult.all.each do |inst|
      if inst.day == "Sat"
        id_sat<<[inst.time,inst.name,inst.profession,inst.cabinet]
      end
    end
    id_sat=id_sat.sort_by{ |a| a.first.to_i }
    @id_sat=id_sat
  end

  def cached
    res= CachedResult.all.map{|inst| {name: inst.name, profession: inst.profession, day: inst.day, time: inst.time, cabinet: inst.cabinet}}

    respond_to do |format|
      format.xml {render xml: res.to_xml}
      format.json {render json: res}
    end
  end

  def view_two
  end

  def view_tree
  end

end
