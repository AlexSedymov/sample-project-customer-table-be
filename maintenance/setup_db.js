const mysql = require("mysql");
const uuid = require("uuid");

const con = mysql.createConnection({
  host: "localhost",
  port: "5200",
  user: "yourusername",
  password: "yourpassword",
  database: "sample-project-mydb"
});

function newUuid () {
  return uuid.v4();
}

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  let sql =
    "CREATE TABLE customers (id VARCHAR(255), name VARCHAR(255), phone VARCHAR(255), email VARCHAR(255), description TEXT)";
  con.query(sql, function(err, result) {
    if (err) throw err;
    console.log("Table created");
  });

  sql = "INSERT INTO customers (id, name, phone, email, description) VALUES ?";
  const values = [
    [
      newUuid(),
      "John",
      "+716789234",
      "Eliseo@gardner.biz",
      "laudantium enim quasi est quidem magnam voluptate ipsam eos\\ntempora quo necessitatibus\\ndolor quam autem quasi\\nreiciendis et nam sapiente accusantium"
    ],
    [
      newUuid(),
      "Peter",
      "+678234890",
      "Jayne_Kuhic@sydney.com",
      "est natus enim nihil est dolore omnis voluptatem numquam\\net omnis occaecati quod ullam at\\nvoluptatem error expedita pariatur\\nnihil sint nostrum voluptatem reiciendis et"
    ],
    [
      newUuid(),
      "Amy",
      "+849367256",
      "Nikita@garfield.biz",
      "quia molestiae reprehenderit quasi aspernatur\\naut expedita occaecati aliquam eveniet laudantium\\nomnis quibusdam delectus saepe quia accusamus maiores nam est\\ncum et ducimus et vero voluptates excepturi deleniti ratione"
    ],
    [
      newUuid(),
      "Hannah",
      "+897567345",
      "Lew@alysha.tv",
      "non et atque\\noccaecati deserunt quas accusantium unde odit nobis qui voluptatem\\nquia voluptas consequuntur itaque dolor\\net qui rerum deleniti ut occaecati"
    ],
    [
      newUuid(),
      "Michael",
      "+890567123",
      "Hayden@althea.biz",
      "harum non quasi et ratione\\ntempore iure ex voluptates in ratione\\nharum architecto fugit inventore cupiditate\\nvoluptates magni quo et"
    ],
    [
      newUuid(),
      "Sandy",
      "+6764253647",
      "Slr@gmail.com",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida euismod lorem, at auctor velit fermentum nec. Sed aliquet augue sed quam porta vehicula eu sit amet risus. Praesent viverra et diam sit amet feugiat. Mauris tellus lectus, sollicitudin sit amet arcu in, congue fermentum lectus. Nulla facilisi. Ut leo turpis, dictum eu posuere in, ultricies id tortor. Ut luctus libero ac odio ultrices euismod. Aenean maximus a tortor eget bibendum. Nulla nibh odio, dapibus sed erat ut, placerat mattis ligula. Etiam in orci vitae ipsum dapibus placerat sed id est."
    ],
    [
      newUuid(),
      "Betty",
      "+985375935",
      "Sos@hot.com",
      "Nunc vestibulum nunc in arcu fermentum, at finibus erat laoreet. Etiam blandit commodo nibh sit amet rutrum. Phasellus pulvinar suscipit nibh, nec cursus nisl fringilla in. Sed in gravida elit, vitae congue metus. Morbi ultricies velit dapibus, faucibus est non, accumsan nunc. Aliquam commodo, nibh sed luctus congue, risus metus efficitur leo, ut gravida eros lectus eu arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In egestas rutrum nibh eu posuere. Sed convallis velit ac orci euismod, nec congue ante facilisis. Donec gravida ex ut libero tincidunt aliquet. Etiam elementum elit nec diam consectetur convallis. Morbi imperdiet, leo ac rutrum tincidunt, metus erat cursus ligula, vitae porttitor sapien augue in augue. Curabitur ac lorem vel metus porta pellentesque."
    ],
    [
      newUuid(),
      "Richard",
      "+906357146",
      "lol@gmail.com",
      "Curabitur blandit risus orci, vel mattis risus luctus non. Ut mauris libero, convallis et leo nec, elementum vestibulum dui. Morbi finibus sit amet mi vitae luctus. Morbi suscipit, metus ut suscipit facilisis, elit nibh consequat metus, nec ullamcorper ante ligula eget nisi. Nam nec sapien sed urna eleifend imperdiet non et elit. In purus quam, aliquam in odio vel, ornare mollis arcu. Aliquam cursus diam magna, id suscipit tortor rutrum non. Proin ut vulputate neque, eu finibus risus. Ut mollis neque sit amet tortor suscipit, nec imperdiet lorem pretium. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris et porttitor tortor. Morbi tempor, dui ac accumsan fringilla, ligula massa luctus quam, in posuere lorem orci eget ex."
    ],
    [
      newUuid(),
      "Susan",
      "+895368246",
      "ert@gmail.com",
      "Cras risus arcu, ultricies at libero accumsan, lacinia eleifend nibh. Nam turpis elit, maximus at nisi eget, cursus dapibus leo. Duis condimentum rutrum ligula, eget viverra est sagittis ac. Cras vitae urna ac nisl dignissim pulvinar. Vestibulum ultrices risus ac ex fermentum ultricies. Vivamus nec augue quis felis pulvinar luctus. Nam feugiat eleifend est, ut tristique nisi. Duis suscipit varius elementum."
    ],
    [
      newUuid(),
      "Vicky",
      "+95637256",
      "sdf@gmail.com",
      "Sed ut lacus non tellus finibus tempor. Nulla varius luctus aliquam. Fusce eleifend dui at purus elementum rutrum. Nam eu condimentum risus. Etiam consectetur fermentum arcu, eget laoreet lacus consequat id. Fusce sodales ligula sed tellus dapibus lacinia. Suspendisse aliquet nibh ac massa pulvinar efficitur. Maecenas tempus odio in quam luctus placerat. Donec eget elit pharetra, volutpat nulla eu, consectetur quam. Vivamus laoreet placerat metus, eu laoreet neque. Nullam ornare, urna at varius hendrerit, libero ipsum pellentesque massa, et suscipit dolor velit eget felis. Mauris tortor felis, consequat ut velit malesuada, luctus viverra nisl. Nullam rutrum elementum dui, id malesuada magna suscipit ut. Phasellus efficitur arcu non orci molestie, sit amet tempus libero ornare. Duis lorem arcu, laoreet at malesuada eget, efficitur sed nisl."
    ],
    [
      newUuid(),
      "Ben",
      "+864269468",
      "fgh@gmail.com",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida euismod lorem, at auctor velit fermentum nec. Sed aliquet augue sed quam porta vehicula eu sit amet risus. Praesent viverra et diam sit amet feugiat. Mauris tellus lectus, sollicitudin sit amet arcu in, congue fermentum lectus. Nulla facilisi. Ut leo turpis, dictum eu posuere in, ultricies id tortor. Ut luctus libero ac odio ultrices euismod. Aenean maximus a tortor eget bibendum. Nulla nibh odio, dapibus sed erat ut, placerat mattis ligula. Etiam in orci vitae ipsum dapibus placerat sed id est."
    ],
    [
      newUuid(),
      "William",
      "+9063785839",
      "qwe@gmail.com",
      "Nunc vestibulum nunc in arcu fermentum, at finibus erat laoreet. Etiam blandit commodo nibh sit amet rutrum. Phasellus pulvinar suscipit nibh, nec cursus nisl fringilla in. Sed in gravida elit, vitae congue metus. Morbi ultricies velit dapibus, faucibus est non, accumsan nunc. Aliquam commodo, nibh sed luctus congue, risus metus efficitur leo, ut gravida eros lectus eu arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In egestas rutrum nibh eu posuere. Sed convallis velit ac orci euismod, nec congue ante facilisis. Donec gravida ex ut libero tincidunt aliquet. Etiam elementum elit nec diam consectetur convallis. Morbi imperdiet, leo ac rutrum tincidunt, metus erat cursus ligula, vitae porttitor sapien augue in augue. Curabitur ac lorem vel metus porta pellentesque."
    ],
    [
      newUuid(),
      "Chuck",
      "+935285989",
      "vbn@gmail.com",
      "Curabitur blandit risus orci, vel mattis risus luctus non. Ut mauris libero, convallis et leo nec, elementum vestibulum dui. Morbi finibus sit amet mi vitae luctus. Morbi suscipit, metus ut suscipit facilisis, elit nibh consequat metus, nec ullamcorper ante ligula eget nisi. Nam nec sapien sed urna eleifend imperdiet non et elit. In purus quam, aliquam in odio vel, ornare mollis arcu. Aliquam cursus diam magna, id suscipit tortor rutrum non. Proin ut vulputate neque, eu finibus risus. Ut mollis neque sit amet tortor suscipit, nec imperdiet lorem pretium. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris et porttitor tortor. Morbi tempor, dui ac accumsan fringilla, ligula massa luctus quam, in posuere lorem orci eget ex."
    ],
    [
      newUuid(),
      "Viola",
      "+894999245",
      "yui@gmail.com",
      "Cras risus arcu, ultricies at libero accumsan, lacinia eleifend nibh. Nam turpis elit, maximus at nisi eget, cursus dapibus leo. Duis condimentum rutrum ligula, eget viverra est sagittis ac. Cras vitae urna ac nisl dignissim pulvinar. Vestibulum ultrices risus ac ex fermentum ultricies. Vivamus nec augue quis felis pulvinar luctus. Nam feugiat eleifend est, ut tristique nisi. Duis suscipit varius elementum."
    ]
  ];
  con.query(sql, [values], function(err, result) {
    if (err) throw err;
    console.log("Number of records inserted: " + result.affectedRows);
  });
});
//
// con.destroy();
// console.log("Disconnected!");

// docker run --name sample-project-mydbl  -p 5200:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=sample-project-mydb -e MYSQL_USER=yourusername -e MYSQL_PASSWORD=yourpassword -d mysql:5.7
