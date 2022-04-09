const modules = import.meta.globEager('./components/*.ts')
import Alpine from 'alpinejs'
import './main.scss'
import 'virtual:windi.css'

Alpine.start()
