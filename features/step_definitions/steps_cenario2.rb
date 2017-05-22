Dado(/^que esteja logado com usuario e senha no site da empresa$/) do
  visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
  fill_in 'txtUsername', :with =>'admin'
  fill_in 'txtPassword', :with =>'admin'
    click_button 'btnLogin'
end

Quando(/^localizado cadastro do colaborador$/) do
  click_link 'menu_pim_viewPimModule'
  click_link 'menu_pim_viewEmployeeList'
  #binding.pry
  fill_in 'empsearch_employee_name_empName', :with => 'Craig'
  click_button 'searchBtn'
  click_link 'Robert'
  click_button 'btnSave'


end

Então(/^alterar cadastro do colaborador$/) do
  fill_in 'personal_txtEmpMiddleName', :with => 'Teste'
  select 'French', :from => 'personal_cmbNation'
  click_button 'btnSave'
end