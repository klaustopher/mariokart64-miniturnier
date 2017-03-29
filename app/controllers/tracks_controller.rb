class TracksController < ApplicationController
  WORLDS = [
    '', 'Mushroom Cup', 'Flower Cup', 'Star Cup', 'Special Cup'
  ]
  TRACKS = [
      { category: 1, number: 1, name: "Luigi Raceway" },
      { category: 1, number: 2, name: "Moo Moo Farm" },
      { category: 1, number: 3, name: "Koopa Troopa Beach" },
      { category: 1, number: 4, name: "Kalimari Desert" },
      { category: 2, number: 1, name: "Toad's Turnpike" },
      { category: 2, number: 2, name: "Frappe Snowland" },
      { category: 2, number: 3, name: "Choco Mountain" },
      { category: 2, number: 4, name: "Mario Raceway" },
      { category: 2, number: 1, name: "Wario Stadium" },
      { category: 3, number: 2, name: "Sherbet Land" },
      { category: 3, number: 3, name: "Royal Raceway" },
      { category: 3, number: 4, name: "Bowser's Castle" },
      { category: 4, number: 1, name: "DK's Jungle Parkway" },
      { category: 4, number: 2, name: "Yoshi Valley" },
      { category: 4, number: 3, name: "Banshee Boardwalk" },
      { category: 4, number: 4, name: "Rainbow Road" },
  ]

  def index
    @track = if params[:category].present?
      TRACKS.select { |t| t[:category] == params[:category].to_i }.sample
    else
      TRACKS.sample
    end
  end
end
