class SearchFacade

  def get_members(house)
    service = HarryPotterService.new
    member_data = service.get_members(house)
    member_data.map do |member|
      Member.new(member)
    end
  end
end
