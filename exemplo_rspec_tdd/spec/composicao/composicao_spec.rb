describe "Ruby on Rails" do
    it { is_expected.to start_with('Ruby').and end_with('Rails') }
    it { expect(option).to eq('optin').or eq('optout').or eq('opterror') }

    def option
        %w(optin optout opterror).sample
    end
end
