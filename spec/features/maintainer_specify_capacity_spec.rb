require 'docking_station'

feature 'system maintainer of the docking station sets capacity' do
  scenario 'docking station capacity changes' do
    docking_station = DockingStation.new
    docking_station.capacity = 30
    expect(docking_station.capacity).to eq 30
  end
end