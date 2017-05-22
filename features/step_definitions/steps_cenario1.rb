Dado(/^que loguei com usuario e senha no site$/) do
  visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
end

Quando(/^digitar usuario e senha na tela de login$/) do
    fill_in 'txtUsername', :with =>'admin'
  	fill_in 'txtPassword', :with =>'admin'
  	click_button 'btnLogin'
end

Então(/^cadastraremos o colaborador$/) do
  click_link 'menu_pim_viewPimModule'
  click_link 'menu_pim_viewEmployeeList'
  click_button 'btnAdd'
  fill_in 'firstName', :with =>'Novato'
  fill_in 'middleName', :with =>'Eu'
  fill_in 'lastName', :with =>'o novato'
  #binding.pry
   #select 'photofile', :from => C:\Users\Jefferson Chagas\Desktop\16708617_1902264926677287_3428115129563054376_n.jpg
  #click_button '//*[@id="photofile"]', :with =>'14947728_947107568728168_1844126683945414962_n.jpg'
  find(:xpath,'//*[@id="chkLogin"]').click
  fill_in 'user_name', :with =>'new123456'
  fill_in 'user_password', :with =>'!@#123456789'
  fill_in 're_password', :with =>'!@#123456789'
  select('Enabled', :from => 'status')
  click_button('btnSave')

end
