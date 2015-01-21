require("spec_helper")

describe(Task) do

  it("belongs to a list") do
    list = List.create({:name => "list"})
    task = Task.create({:description => "task", :list_id => list.id})
    expect(task.list()).to(eq(list))
  end

  describe("#not_done") do
    it("returns the not done tasks") do
      not_done_tasks = (1..5).to_a().map() do |number|
        Task.create(:description => "task #{number}", :done => false)
      end
      done_task = Task.create({:description => "done task", :done => true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end
end
