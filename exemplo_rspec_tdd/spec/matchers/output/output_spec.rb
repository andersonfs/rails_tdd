describe 'Matcher Output' do 
    it { expect{puts "anderson"}.to output.to_stdout }
    it { expect{print "anderson"}.to output("anderson").to_stdout } #print usado para que não tenha o caracter enter no final
    it { expect{puts "anderson fimino"}.to output(/anderson/).to_stdout } #regexp

    it { expect{warn "anderson"}.to output.to_stderr }
    it { expect{warn "anderson"}.to output("anderson\n").to_stderr } #print usado para que não tenha o caracter enter no final
    it { expect{warn "anderson firmino"}.to output(/anderson/).to_stderr } #regexp
end