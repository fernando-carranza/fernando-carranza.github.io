<a href="https://colab.research.google.com/drive/1uMLRTdjnptc0iQidqNGksl7m17W7prsv?usp=sharing" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

# Expresiones Regulares


```python
import re
# importa la librería re
# Documentación de re: https://docs.python.org/3/library/re.html
```


```python
# Fragmento de "Una excursión a los indios ranqueles" de Luis Mansilla
corpus1 = """
No sé dónde te hallas, ni dónde te encontrará esta carta y las que le
seguirán, si Dios me da vida y salud.

Hace bastante tiempo que ignoro tu paradero, que nada sé de ti; y
sólo porque el corazón me dice que vives, creo que continúas tu
peregrinación por este mundo, y no pierdo la esperanza de comer
contigo, á la sombra de un viejo y carcomido algarrobo, ó entre
las pajas al borde de una laguna, ó en la costa de un arroyo, un
_churrasco_ de guanaco, ó de gama, ó de yegua, ó de gato montés, ó una
picana de avestruz, boleado por mí, que siempre me ha parecido la más
sabrosa.

Á propósito de avestruz, después de haber recorrido la Europa y la
América, de haber vivido como un marqués en París y como un guaraní
en el Paraguay; de haber comido _mazamorra_ en el Río de la Plata,
_charquicán_ en Chile, ostras en Nueva York, _macarroni_ en Nápoles,
trufas en el Perigord, _chipá_ en la Asunción--recuerdo que una de
las grandes aspiraciones de tu vida era comer una tortilla de huevos
de aquella ave pampeana en _Nagüel Mapo_, que quiere decir «Lugar del
Tigre».

Los gustos se simplifican con el tiempo, y un curioso fenómeno social
se viene cumpliendo desde que el mundo es mundo. El _macrocosmo_, ó sea
el hombre colectivo, vive inventando placeres, manjares, necesidades, y
el _microcosmo_, ó sea el hombre individual, pugnando por emanciparse
de las tiranías de la moda y de la civilización.

Á los veinticinco años, somos víctimas de un sinnúmero de
superfluidades. No tener guantes blancos, frescos como una lechuga,
es una gran contrariedad, y puede ser causa de que el mancebo más
cumplido pierda casamiento. ¡Cuántos dejaron de comer muchas veces, y
sacrificaron su estómago en aras del buen tono!

Á los cuarenta años, cuando el cierzo y el hielo del invierno de la
vida han comenzado á marchitar la tez y á blanquear los cabellos, las
necesidades crecen, y por un bote de _cold cream_, ó por un paquete de
cosmético, ¿qué no se hace?
"""
```


```python
print(corpus1)
```

## Excurso breve de funciones

- Una función es una operación matemática que toma un objeto y devuelve otro.
- Los objetos que toman las funciones se suelen clasificar en tipos. Por ejemplo, hay funciones que aplican a números (e.g., las operaciones aritméticas), funciones que aplican a cadenas (e.g., la operación de concatenación), funciones que aplican a conjuntos (e.g., unión, intersección, etc.).
- Cada lenguaje de programación define su propia ontología de tipos.

En el caso de Python, algunos de los tipos son los siguientes:
- **Lista**: Se escribe entre corchetes
- **Conjunto**: se escribe entre llaves
- **entero (integer)**: Son los números enteros (no incluye los números con decimales).
- **Cadena (string)**: Son las cadenas.

Las librerías de Python nos proveen una serie de funciones. Es importante conocer qué es lo que toman como entrada y qué devuelven como salida.




```python
def suma(n, m):
    resultado = n + m
    return resultado
```


```python
#suma(5,3)
#suma(5,'d')
#suma('d','a')
```

## Findall

Devuelve una lista con las ocurrencias que coincidan con la expresión regular


```python
# a) Buscar todas las palabras que empiezan con mayúscula
re.findall(r"", corpus1, flags=0)
#mayus = re.findall(r"", corpus1, flags=0)
#print(mayus)
#type(mayus)
```


```python
# b) Buscar todas las palabras
tokens = re.findall(r"", corpus1, flags=0)
print(tokens)
```


```python
# Fragmento de balance de YPF 2023
corpus2 = '''
Durante 2023 la pérdida operativa del Grupo fue de US$ 1.248 millones, en comparación con la ganancia operativa de US$
2.482 millones durante 2022 (una disminución de US$ 3.730 millones), explicada por: (i) menores ingresos (una disminución de US$
1.446 millones o 7,7%) principalmente debido a menores ventas en el mercado externo de granos y harinas (88,7%) debido a
menores volúmenes y precios, menores ventas en el mercado interno de gasoil (4,2%) debido a menores precios, y de fertilizantes
(26,7%) principalmente debido a menores precios; (ii) mayores costos y gastos (un incremento de US$ 121 millones o 0,7%)
principalmente debido a un aumento de los costos de producción por US$ 999 millones o 13,0% impulsado por el incremento
generalizado de precios afectando los costos y gastos y mayores niveles de actividad (mayor producción de hidrocarburos y may ores
niveles de procesamiento), mayores gastos de administración por US$ 48 millones o 7,3%, y una variación negativa de la variación
de existencias de US$ 276 millones, compensados parcialmente por una disminución de las compras por US$ 1.106 millones o
17,8%, menores gastos de comercialización por US$ 92 millones o 4,9%, y menores gastos de exploración por US$ 4 millones o
6,2%; (iii) mayores cargos por deterioro de propiedades, planta y equipo por US$ 2.165 millones; y (iv) un mayor cargo positivo en
otros resultados operativos, netos de US$ 2 millones o 1,3%.
Los resultados financieros, netos del Grupo durante 2023 fueron una ganancia de $ 620.884 millones (US$ 897 millones), en
comparación con la ganancia de $ 43.478 millones (US$ 128 millones) de 2022. Esta variación se debió principalmente a una mayor
diferencia de cambio positiva originada por una mayor devaluación del peso observada durante 2023, acentuada en el cuarto
trimestre, aplicada sobre una mayor posición pasiva monetaria neta en pesos del Grupo y mayores resultados positivos por cambios
en el valor razonable de los activos financieros medidos a fair value; compensada parcialmente por mayores intereses perdidos
sobre nuestra deuda. Véase Nota 28 a los estados financieros consolidados.
El cargo por impuesto a las ganancias del Grupo correspondiente a 2023 fue una pérdida de $ 653.449 millones (US$ 1.020
millones), en comparación con la pérdida de $ 108.912 millones (US$ 822 millones) correspondiente al mismo período de 2022.
Véase Nota 17 a los estados financieros consolidados.
En base a todo lo anterior, el resultado neto correspondiente a 2023 fue una pérdida de $ 1.532.745 millones (US$ 1.277
millones), en comparación con una ganancia de $ 290.264 millones (US$ 2.234 millones) durante el mismo período de 2022
'''
```


```python
# c) Buscar todos los números
num = re.findall(r'', corpus2)
print(num)
```


```python
# d) Buscar todos los porcentajes
porc = re.findall(r'a%', corpus2)
print(porc)
```

## Split

Divide el texto usando la expresión como separador


```python
tokens = re.split(r"", corpus2, maxsplit=0, flags=0)
print(tokens)
```

## Search

- Si una parte de la cadena coincide con la expresión devuelve el match
- Si no, devuelve None.




```python
re.search(r"", corpus2)
```


```python
re.compile(r"").search(corpus2, 10, 50)
```


```python
for word in tokens:
    if re.search(r"", word):
        print(word)
```

## Fullmatch

- Si el corpus coincide con la expresión, devuelve el match
- Si el corpus no coincide, devuelve None


```python
corpus3 = 'Hola'
```


```python
re.fullmatch(r"", corpus3, flags=0)

```


```python
for word in tokens:
    if re.fullmatch(r"\d+", word):
        print(word)
```

## Sub

- Devuelve la cadena de entrada reemplazando


```python
# Tuits
corpus4 = """
@pocoPATO Facho, poné la bío entera. Abajo de acá. 😏💋
================================
@GabrielaDeloredda Pero si Vargas Llosa siempre ha Sido de derecha.
================================
@RonaBlanca00 @nickinic @SergioRovel2705 Beto se mermeleó a tarros llenos con la plata de los Wong y de Ratael por impulsar la candidatura de este facho
================================
Otro facho pobre de la secta reclamando jajaja y después dicen: voten por la Dere$ha
🤣 #bonoclasemedia2021
#EstallidoChile2021 https://t.co/mbUXuuNg9p
================================
@amuchacha @MaxiPiedra95 15, algo normal para un adolescente que estudia en un colegio catolico-facho
================================
@cesamo35 @PartidoMorenaPtR cuando despertaste facho, las encuestas le dan más de 40 puntos contra menos de 20 de cada uno de tus podridos amores
"""
```


```python
# Borrar los usuarios
sin_usrs = re.sub(r"", r"",corpus4, count=0, flags=0)
print(sin_usrs)
```


```python
# Borrar las páginas de internet
re.sub(r"", r"",corpus4, count=0, flags=0)
```


```python
sin_emoticones = ' '.join(re.sub("["
        u"\U0001F600-\U0001F64F"  # emoticons
        u"\U0001F300-\U0001F5FF"  # symbols & pictographs
        u"\U0001F680-\U0001F6FF"  # transport & map symbols
        u"\U0001F1E0-\U0001F1FF"  # flags (iOS)
        u"\U00002500-\U00002BEF"  # chinese char
        u"\U00002702-\U000027B0"
        u"\U00002702-\U000027B0"
        u"\U000024C2-\U0001F251"
        u"\U0001f926-\U0001f937"
        u"\U00010000-\U0010ffff"
        u"\u2640-\u2642"
        u"\u2600-\u2B55"
        u"\u200d" # family
        u"\u23cf" # eject
        u"\u23e9" # forward
        u"\u231a" # watch
        u"\ufe0f"  # dingbats
        u"\u3030"
                           "]+", "", corpus4, flags=re.UNICODE).split()) # deletes emojis
print(sin_emoticones)
```


```python
corpus5 = 'AaAaAAaaaaAAA'
```


```python
#Pasar a minúscula corpus 5

lowered1 = re.sub(r"", r"",corpus5, count=0, flags=0)
print(lowered1)
```


```python
lowered2 = corpus5.lower()
print(lowered2)
```


```python

```

{% include copybutton.html %}
