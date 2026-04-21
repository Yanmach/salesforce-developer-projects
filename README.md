# ☁️ Salesforce Developer Portfolio | Core & Beyond

Repositório centralizando as soluções técnicas desenvolvidas durante o programa **Salesforce Developer Core (OSF Academy)** e projetos práticos do ecossistema Trailhead. Aqui você encontrará implementações que variam de automações declarativas (Flows) a back-end robusto (Apex) e front-end moderno (LWC).

---

## 🛠️ Tecnologias & Hard Skills
* **Back-end:** Apex (Triggers, Classes, Batch, Schedulable, Callouts API)
* **Front-end:** Lightning Web Components (LWC), JavaScript, HTML/CSS
* **Testes:** Apex Test Classes (Unit/Mocks), Jest (LWC)
* **Ferramentas:** VS Code, Salesforce CLI (SFDX), Git/GitHub
* **Low-Code:** Flow Builder (Screen & Record-Triggered Flows)

---

## 🚀 Destaques do Repositório (Hands-on)

### 🧩 Desenvolvimento Programático (Apex)
* **Validação de CEP (BR/RO):** Trigger em `Account` com estrutura de Handler/Service para validação geográfica e lógica de negócio.
* **Desconto em Oportunidade:** Automação de cálculo de desconto baseado no `Stage` da `Opportunity`, garantindo integridade financeira.
* **Integração Web Service (Callouts):** Implementação de serviço Apex consumindo a API externa *WeatherService*, incluindo **Apex Mocks** para cobertura de testes de integração.
* **Performance em Massa:** Batch Apex e Schedulable para arquivamento automático de registros (`Is_Archived__c`), otimizando o armazenamento da Org.

### 🎨 Interface do Usuário (LWC)
* **Componente accountWeather:** Interface reativa para exibição de dados climáticos em tempo real, integrada ao back-end Salesforce.
* **Testes Unitários (Jest):** Garantia de qualidade no front-end com testes unitários para os componentes desenvolvidos.

### ⚡ Automação Declarativa (Superbadges)
* Domínio de **Flow Builder** para processos complexos de aprovação e gerenciamento de campanhas, focando sempre na experiência do usuário (UX).

---

## 📂 Estrutura do Projeto
```text
force-app/main/default/
├── classes/     # Lógica de negócio, Services e Testes
├── triggers/    # Gatilhos de automação de banco de dados
├── lwc/         # Componentes Lightning Web
├── objects/     # Configurações de campos e objetos customizados
└── flows/       # Fluxos automatizados (Declarativo)

🔗 Conecte-se comigo

Estou em constante evolução no ecossistema Trailhead e aberto a novas oportunidades como Desenvolvedor Salesforce.

    LinkedIn: https://www.linkedin.com/in/yan-machado-de-souza-826931186/
    Trailblazer Profile: https://www.salesforce.com/trailblazer/yanmachado-sf (Explorer 🎖️)

    Rank: Expeditioner (60.000+ pontos)
