from flask import Flask, render_template
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()

app.config['MYSQL_DATABASE_USER'] = 'webuser'
app.config['MYSQL_DATABASE_PASSWORD'] = 'web3660'
app.config['MYSQL_DATABASE_DB'] = 'webapp'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_USE_UNICODE'] = True
app.config['MYSQL_CHARSET'] = 'utf-8'

mysql.init_app(app)


@app.route("/")
def index():
    cursor = mysql.connect().cursor()
    cursor.execute("SELECT baslik, metin, DATE_FORMAT(tarih,'%d %M %Y') FROM duyurular ORDER BY tarih DESC")
    data = cursor.fetchall()

    return render_template("index.html", data=data)

if __name__ == "__main__":
    app.run(host='0.0.0.0')
