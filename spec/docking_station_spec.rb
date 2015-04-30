require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).not_to be_broken
    # expect(bike.working?).to be true
  end

  it 'does not release broken bikes' do
    broken_bike = Bike.new
    broken_bike.report_broken
    subject.dock broken_bike
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'raises an error when full' do
    20.times { subject.dock double :bike }
    expect { subject.dock double :bike }.to raise_error 'Station Full'
  end

  it 'can dock a bike' do
    expect(subject.dock :bike).to be nil
  end

  it 'can set a capacity' do
    docking_station = DockingStation.new
    docking_station.capacity = 30
  end






end