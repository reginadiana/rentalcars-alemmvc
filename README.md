# Rental Cars

Rental Cars é um projeto de sistema administrativo de uma empresa que aluga
carros para o público em geral. O foco do sistema é gerenciar a frota de carros,
os clientes e as unidades (filiais) da empresa.


## Como iniciar o projeto

:warning: Para executar esse projeto você deve ter um computador, preferencialmente com
Linux, com a linguagem de programação Ruby na versão 2.6.3

:warning: Baixe esse projeto com o `git clone`

:warning: Dentro do diretório do projeto, você deve instalar as dependências definidas no
arquivo `Gemfile` com o comando `bundle install`.

:warning: Para preparar e iniciar o banco, execute `rails db:create` para criar o banco, `rails db:migrate` para realizar as migrations dos dados do banco, `rails db:seed` para registrar os dados definidos em `db/seeds`.
 
:warning: Com todas dependências instaladas e o banco preparado, execute `rails server` e acesse
`localhost:3000` em seu navegador.


## Executando os testes

Com todas dependências instaladas, como descrito na seção anterior, em seu
terminal execute `rspec`.

## Principais Características e Funcionalidades

:blue_car: O projeto RentalCars é focado somente nos funcionários da empresa de locação,
  servindo como um sistema interno e não como um site onde os clientes podem
agendar locações

:blue_car: O sistema administra o cadastro de filiais (subsidiaries) 

:blue_car: O sistema gerencia categorias de carros e modelos de carros disponíveis para
  locação, sem distinção de filiais
  
:blue_car: A categoria de um carro define seu preço padrão de locação, no entanto é
  possívei customizar os preços de locação por filial
  
:blue_car: Um carro da frota deve ser sempre vinculado a um a filial

:blue_car: Uma locação deve ser agendada, definindo o cliente, as datas de retirada e
  devolução e a categoria de carro. Nesse momento é feita uma validação de que
existem carros disponíveis no período escolhido.

:blue_car: Ao finalizar o agendamento é gerado um código único da locação

:blue_car: Ao iniciar a locação, deve ser escolhido o carro de acordo com a categoria
  escolhida
  
:blue_car: Uma locação deve ser composta de ao menos um carro e 0 ou N acessórios
  adicionais (AddOns) além de 0 ou N coberturas de seguro
  
## Workshop

:books: **11/01 - Segunda**

3 coisas que temos que enviar ao escrever código

- rigidez - Todo projeto muda, então rigidez não é algo que queremos no código.

- fragilidade - O comportamento de cada componente deve ser um só, de maneira que a falta dele não impacte do funcionamento de tudo. 

- viscosidade - Quando temos um projeto muito bagunçado, precisamos fazer uma nova feature e temos que continuar fazendo de maneira bagunçada. 

Como evitar:

- Estudar mais

- Trade-offs: tem a ver com design x funcionalidade, ou seja, por mais que no começo entreguemos mais valor mas com código ruim, a longo prazo isso se torna muito custoso. Entao devemos planejar desde cedo e demorar um pouco mais para entregar mas com código melhor. 

:books: **13/01 - Quarta**

:books: **15/01 - Sexta**

:books: **18/01 - Segunda**

:books: **20/01 - Quarta**

:books: **22/01 - Sexta**

