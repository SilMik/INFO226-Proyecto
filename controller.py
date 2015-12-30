# -*- coding: utf-8 -*-
from flask import (
    Flask,
    request,
    render_template,
    redirect,
    url_for)


app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def principal():
    if request.method == "POST":
        sCalle = (request.form["calle"]).encode('utf-8')
        sCalle2 = (request.form["calle2"]).encode('utf-8')
        sSector = (request.form["sector"]).encode('utf-8')
        sPoblacion = (request.form["poblacion"]).encode('utf-8')
        sRef = (request.form["ref"]).encode('utf-8')
        sDescripcion = (request.form["descripcion"]).encode('utf-8')
        sContacto = (request.form["contacto"]).encode('utf-8')
        sCodigo = (request.form["codigo"]).encode('utf-8')

        bien = model.emergencia(sCalle, sCalle2, sSector, sPoblacion, 
                                    sRef, sDescripcion, sContacto, sCodigo)
                                
        if bien:
            return render_template('principal.html', error="201")
            # return redirect(url_for('index', error='201'))
        else:
            return render_template('principal.html', error="500")
    else:
        return render_template('principal.html')

if __name__ == "__main__":
    app.run(debug=True)
