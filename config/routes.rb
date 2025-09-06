Rails.application.routes.draw do
 resources :anis
 root 'anis#index'
 get 'anis/:id' => 'anis#show',as: 'ani_show'
 patch 'anis/:id' => 'anis#update'
 delete 'tweets/:id' => 'tweets#destroy' 
 get 'perfumes/question1' => 'perfumes#question1'
 get 'perfumes/question2' => 'perfumes#question2'
 get 'perfumes/question3' => 'perfumes#question3'
 get 'perfumes/question4' => 'perfumes#question4'
 get 'perfumes/show1' => 'perfumes#show1'
 get 'perfumes/show2' => 'perfumes#show2'
 get 'perfumes/show3' => 'perfumes#show3'
 get 'perfumes/show4' => 'perfumes#show4'
 get 'perfumes/show5' => 'perfumes#show5'
 get 'perfumes/show6' => 'perfumes#show6'
end
