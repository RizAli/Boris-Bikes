feature 'member of public returns bike' do
  scenario 'bike can be reported broken when returned' do
    docking_station = DockingStation.new
    bike = Bike.new
    bike.report_broken
    expect { docking_station.dock  bike}.not_to raise_error
  end
end