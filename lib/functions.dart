void add(num1, num2){ // là khi gọi truyền tham số theo vị trí sẽ map theo
  num1 + num2;
}

void demo(){
  add(5, 3);
}

void addNameParameter({num1, required num2}){ 
  // sử dụng cách này khi tham số truyền vào không cần đúng vị trí
  // các widget thường dùng kiểu này
  // required là tham số bắt buộc 

  num1 + num2;
}

void demoNameParameter(){
  addNameParameter(num2:3, num1:5);
}