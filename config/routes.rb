Rails.application.routes.draw do
  root 'quizzes#top'
  get '/hint', to: 'quizzes#hint'
  get '/ans', to: 'quizzes#ans'
end
