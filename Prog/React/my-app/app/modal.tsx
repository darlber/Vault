"use client";
import { useState } from "react";

export default function Modal() {
  const [open, setOpen] = useState(false);

  return (
    <>
      <button onClick={() => setOpen(true)}>Abrir</button>
      {open && (
        <div>
          <p>Ventana modal</p>
          <button onClick={() => setOpen(false)}>Cerrar</button>
        </div>
      )}
    </>
  );
}
