const modules = import.meta.globEager('./src/*.ts')
import Alpine from 'alpinejs'
import './main.scss'
import 'virtual:windi.css'

Alpine.start()
