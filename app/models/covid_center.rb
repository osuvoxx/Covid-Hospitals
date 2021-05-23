class CovidCenter < ApplicationRecord

    def self.search(search)
        if search
            @covid_centers = CovidCenter.where(["district LIKE ?","%"+search+"%"]);
        else
            all
        end
    end

end
