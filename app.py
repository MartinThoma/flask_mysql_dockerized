#!/usr/bin/env python

"""Minimal Flask app."""

from flask import Flask
from flask import render_template, request
import logging
import sys
import db
from sqlalchemy import Table

logging.basicConfig(format='%(asctime)s %(levelname)s %(message)s',
                    level=logging.INFO,
                    stream=sys.stdout)

app = Flask(__name__, template_folder='template', static_url_path='')


@app.route('/', methods=['GET', 'POST'])
def index_controller():
    """Show a form to enter information what to look for."""
    if request.form.get('country_name'):
        countries_table = Table('countries', db.meta)
        country_name = request.form.get('country_name')
        ins = countries_table.insert().values(country_name=country_name)
        db.conn.execute(ins)
    return render_template('home.html', active_page="home")


@app.route('/list')
def list_controller():
    """Show a list of all countries."""
    result = db.engine.execute("SELECT * FROM `countries`")
    data = [country[0] for country in result]

    return render_template('country_list.html', active_page="list", data=data)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', threaded=True)
