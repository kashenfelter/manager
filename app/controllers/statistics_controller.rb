#statistic's page

class StatisticsController < ApplicationController
  def index
  	# a zero-initialized array to hold the RFP counts for months for each year
  	@rfpMonths = Array.new(12,0)
    @rfpMonths2014 = Array.new(12,0)
    @rfpMonths2015 = Array.new(12,0)
    @rfpMonths2016 = Array.new(12,0)
    # a zero-initialized array to hold the mil counts for months for each year
    @milMonths = Array.new(12,0)
    @milMonths2014 = Array.new(12,0)
    @milMonths2015 = Array.new(12,0)
    @milMonths2016 = Array.new(12,0) 

  	#get all Oppty objects from database into the @oppties collection
  	@oppties = Oppty.all

	  #iterate through all of the oppurtunities
  	@oppties.each do |opp|
  		#get month of this particular opportunity
  		month = opp.rfpDate.mon
      year = opp.rfpDate.year

      #fill up the rfpMonths array 
      @rfpMonths[month-1] += 1

      #fill up the rfpMonths2014 array 
      if year == 2014 then @rfpMonths2014[month-1] += 1 end

      #fill up the rfpMonths2015 array 
      if year == 2015 then @rfpMonths2015[month-1] += 1 end

      #fill up the rfpMonths2016 array 
      if year == 2016 then @rfpMonths2016[month-1] += 1 end
  	end
  	
  	#get all Oppty objects from database into the @oppties collection
  	@histories = History.all

	  #iterate through all of the oppurtunities
  	@histories.each do |hist|
  		#get month of this particular opportunity
  		month = hist.rfpDate.mon
      year = hist.rfpDate.year

      #fill up the rfpMonths array 
      @rfpMonths[month-1] += 1

      #fill up the rfpMonths2014 array 
      if year == 2014 then @rfpMonths2014[month-1] += 1 end

      #fill up the rfpMonths2015 array 
      if year == 2015 then @rfpMonths2015[month-1] += 1 end

      #fill up the rfpMonths2016 array 
      if year == 2016 then @rfpMonths2016[month-1] += 1 end
  	end

    #at this point @rfpMonths has the RFP counts for each month

    #iterate through all of the oppurtunities
    @oppties.each do |opp|
      #get month of this particular opportunity
      month = opp.awardDate.mon
      year = opp.awardDate.year

      #fill up the milMonths array 
      unless opp.value == nil then
         #fill up the rfpMonths array 
        @milMonths[month-1] += opp.value

        #fill up the rfpMonths2014 array 
        if year == 2014 then @milMonths2014[month-1] += opp.value end

        #fill up the rfpMonths2015 array 
        if year == 2015 then @milMonths2015[month-1] += opp.value end

        #fill up the rfpMonths2016 array 
        if year == 2016 then @milMonths2016[month-1] += opp.value end
      end
    end

    #iterate through all of the oppurtunities
    @histories.each do |hist|
      #get month of this particular opportunity
      month = hist.awardDate.mon
      year = hist.awardDate.year

      #fill up the milMonths array 
      unless hist.value == nil then
         #fill up the rfpMonths array 
        @milMonths[month-1] += hist.value

        #fill up the rfpMonths2014 array 
        if year == 2014 then @milMonths2014[month-1] += hist.value end

        #fill up the rfpMonths2015 array 
        if year == 2015 then @milMonths2015[month-1] += hist.value end

        #fill up the rfpMonths2016 array 
        if year == 2016 then @milMonths2016[month-1] += hist.value end
      end
    end
  	
    #at this point @milMonths has the millions of $ counts for each month
    (0..11).each do |i|
      @milMonths[i] = ( @milMonths[i] * 10.0).round / 10.0
      @milMonths2014[i] = ( @milMonths2014[i] * 10.0).round / 10.0
      @milMonths2015[i] = ( @milMonths2015[i] * 10.0).round / 10.0
      @milMonths2016[i] = ( @milMonths2016[i] * 10.0).round / 10.0
    end
    #at this point @milMonths is now rounded to 1 precision point
  end
end