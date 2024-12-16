// eslint-disable-next-line @typescript-eslint/no-unused-vars
import styles from './app.module.css';
import NxWelcome from './nx-welcome';

export function App() {
  return (
    <>
      <NxWelcome title="test" />
      <div>
        <h1>Probando deploy condicional eliminando variables que no se usan</h1>
      </div>
    </>
  );
}

export default App;
