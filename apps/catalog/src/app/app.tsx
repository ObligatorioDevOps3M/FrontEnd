// eslint-disable-next-line @typescript-eslint/no-unused-vars
import styles from './app.module.css';
import NxWelcome from './nx-welcome';

export function App() {
  return (
    <>
      <NxWelcome title="catalog" />
      <div>
        <h1>Probando deploy condicional</h1>
      </div>
    </>
  );
}

export default App;
