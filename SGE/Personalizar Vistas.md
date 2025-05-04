En Odoo, las vistas se definen utilizando archivos XML. Comenzamos navegando hasta la carpeta «addons» y creando una carpeta (modulo) que contenga la view.
`mkdir /opt/odoo18/odoo18/addons/formSSGG`

Dentro de esta carpeta, crearemos un archivo `__manifest__` que contenga la información del módulo.
```
{
'name' : 'formSSGG',
'version' : '1.0',
'depends' : ['base'],
'data' : [
         'views/formSSGG.xml,
         'views/menuSSGG.xml,
],`
'installable' : True,
'application' : False,
}
```


Installable: true quiere decir que se puede instalar; mientras que application:false, quiere decir que no lo vamos a mostrar junto al resto de aplicaciones como «Ventas», o «Inventario»
## Definición de vista:

1. En URL dentro de odoo, buscar el model="loquesea".
2. Tag `<data>` no es necesario a partir de Odoo 10+
3. 
```
<odoo>
    <data>
        <record id="report_custom" model="ir.actions.report">
            <field name="name">Reports Clientes</field>
            <field name="model">res.partner</field>
            <field name="report_type">qweb-pdf</field>
            <field name="report_name">formSSGG.report_custom_template</field>
            <field name="print_report_name">'Clientes - %s' % (object.name or '')</field>
        </record>

        <template id="report_custom_template">
            <t t-call="web.html_container">
                <t t-call="web.external_layout">
                    <div class="page">
                        <h2>Reporte de Clientes</h2>
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Teléfono</th>
                                    <th>Correo Electrónico</th>
                                </tr>
                            </thead>
                            <tbody>
                                <t t-foreach="docs" t-as="partner">
                                    <tr>
                                        <td><t t-esc="partner.name"/></td>
                                        <td><t t-esc="partner.phone or 'N/A'"/></td>
                                        <td><t t-esc="partner.email or 'N/A'"/></td>
                                    </tr>
                                </t>
                            </tbody>
                        </table>
                    </div>
                </t>
            </t>
        </template>
    </data>
</odoo>
```

Otro ejemplo:

```
<?xml version="1.0" encoding="UTF-8"?>
<odoo>
    <record id="view_res_partner_tree_custom" model="ir.ui.view">
        <field name="name">res.partner.tree.custom</field>
        <field name="model">res.partner</field>
        <field name="arch" type="xml">
            <tree string="Custom Partner Tree">
                <field name="name"/>
                <field name="vat" string="NIF"/>
                <field name="is_company" string="Es Compañía"/>
                <field name="phone"/>
                <field name="email"/>
                <field name="website" string="Página Web"/>
                <field name="city"/>
            </tree>
        </field>
    </record>

    <record id="view_contact_form" model="ir.ui.view">
        <field name="name">contact.form</field>
        <field name="model">res.partner</field>
        <field name="arch" type="xml">
            <form>
                <group>
                    <field name="name" string="Nombre del contacto"/>
                    <field name="street" string="Calle"/>
                    <field name="zip" string="Código Postal"/>
                    <field name="city" string="Ciudad"/>
                    <field name="state_id" string="Provincia (Código)"/>
                </group>
            </form>
        </field>
    </record>
</odoo>

```

## Definición de un menú:
```
<odoo>
    <!-- Definición del menú -->
    <menuitem id="menu_main" name="MenuASG" sequence="1"/>
    <menuitem id="menu_asg" name="MenuASG" parent="menu_main"/>
    <menuitem id="menu_ver_empresas" name="VerEmpresas" parent="menu_asg"/>

    <!-- Acción para la vista de lista personalizada (Árbol de contactos) -->
    <record id="action_res_partner_list_custom" model="ir.actions.act_window">
        <field name="name">Lista Contactos</field>
        <field name="res_model">res.partner</field>
        <field name="view_mode">list,form</field>
        <field name="view_id" ref="view_res_partner_tree_custom"/>
    </record>

    <!-- Acción para la vista de formulario (Formulario de contacto) -->
    <record id="action_contact_form" model="ir.actions.act_window">
        <field name="name">Formulario de Contacto</field>
        <field name="res_model">res.partner</field>
        <field name="view_mode">form</field>
        <field name="view_id" ref="view_contact_form"/>
    </record>

    <!-- Menú para la vista de lista personalizada (Árbol de contactos) -->
    <menuitem id="menu_res_partner_list" name="Contactos" parent="menu_asg" action="action_res_partner_list_custom"/>

    <!-- Menú para la vista de formulario, accesible desde VerEmpresas -->
    <menuitem id="menu_ver_empresas_action" name="Formulario de Contacto" parent="menu_ver_empresas" action="action_contact_form"/>
</odoo>
```

