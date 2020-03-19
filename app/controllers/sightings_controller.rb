class SightingsController < ApplicationController

    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
        # THERE ARE MULTIPLE WAYS TO GET ALL DATA THAT IS REALATED TO THE JOIN TABLE ONTO THE API 
        #1.
        # render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }

        # THIS METHOD WORKS WELL WHEN DEALING WITH ANY ACTION THAT RENDERS AN ARRAY
        #2. USING include:
            render json: sighting, include: [:bird, :location]

        #3. THIS IS THE LONGHAND METHOD FOR THE ABOVE METHOD
        # render json: sighting.to_json(include: [:bird, :location])
        else
            render json: { message: "No sighting found with that id" }
        end
        

    end

end
