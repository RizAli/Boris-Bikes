require 'docking_station'

feature 'system maintainer of the docking station sets capacity' do
  scenario 'docking station capacity changes' do
    docking_station = DockingStation.new
    docking_station.capacity = 30
    expect(docking_station.capacity).to eq 30
  end
end

# feature 'member of public accesses bike' do
#   scenario 'docking station will not make broken bikes available' do
#     docking_station = DockingStation.new
#     broken_bike = Bike.new
#     broken_bike.break
#     docking_station.dock broken_bike
#     expect { docking_station.release_bike }.to raise_error 'No Bikes Available'
#   end
# end