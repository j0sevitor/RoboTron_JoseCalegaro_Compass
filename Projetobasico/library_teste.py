import requests as req
import json


def Get_Endpoint_Usuarios_Tantas_Vezes(vezes):
    lista = []
    for vez in range(0, vezes):
        r = req.get("https://serverest.dev")
        para_json = r.json()
        lista.append(para_json)
    return lista