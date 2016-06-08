
#we are going to have to include our Project class in our spec file
require_relative 'project'
#now we can start Rspec
#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
RSpec.describe Project do
  #now we can have Rspec test our Project class
  it 'has a getter and setter for name attribute' do
    # now we can test our Project class
    # lets create a new project and make sure we can set the name attribute
    project1 = Project.new("Project 1", "description 1")
    project2 = Project.new("Project 2", "description 2")
    # we should be able to run that code, now lets make sure its changed.
    # we run the expect method on our projects name and expect our project name to now equal the value of Changed Name, this returns true or false
    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project1.add_to_team("Jean")).to eq("Jean")
  end 
end