class GamesController < ApplicationController
  def index
    set_global_seed unless $global_seed

    @participants_for_race = Participant.all.to_a.shuffle(random: Random.new($global_seed))
    @participants = Participant.order(points: :desc)
  end

  def reseed
    set_global_seed
    redirect_to root_path
  end

  def update
    params[:points].each do |p_id, place|
      participant = Participant.find(p_id)
      participant.races ||= 0
      participant.races += 1
      participant.points ||= 0
      participant.points += case place.to_i
      when 1 then 4
      when 2 then 2
      when 3 then 1
      when 4 then 0
      else 0
      end
      participant.save
    end

    redirect_to root_path
  end

  private

  def set_global_seed
    $global_seed = (Random.new.random_number * 100_000).to_i
  end
end
