##패키지 {class}의 knn()함수 사용
library(class)
iris3
##3차원 데이터
train<-rbind(iris3[1:25,,1],iris3[1:25,,2], iris3[1:25,,3])
train
test<-rbind(iris3[26:50,,1],iris3[26:50,,2], iris3[26:50,,3])
test
cl<-factor(c(rep("setosa",25), rep("versicolor",25), rep("virginica",25) ))
##k=3
iris3_model<-knn(train, test, cl, k=3, prob=TRUE)
iris3_model
m<-table(cl, iris3_model, dnn=c("Actual", "Predicted"))
##오분률 계산
1-sum(diag(m))/sum(m)
##정확도
sum(diag(m))/sum(m)
##k=7
iris3_model_7<-knn(train, test, cl, k=7, prob=TRUE)
iris3_model_7
m_7<-table(cl, iris3_model_7, dnn=c("Actual", "Predicted"))
##오분률 계산
1-sum(diag(m_7))/sum(m_7)
##정확도
sum(diag(m_7))/sum(m_7)