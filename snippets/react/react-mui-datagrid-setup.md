---
Title: MUI DataGrid Setup
Description: Basic MUI X DataGrid setup with columns definition, pagination, and TypeScript types
Tags:
  - react
  - mui
  - datagrid
  - table
  - typescript
---

```tsx
import { DataGrid, GridColDef } from "@mui/x-data-grid";

interface Item {
  id: number;
  name: string;
  description: string;
  type: string;
}

const columns: GridColDef[] = [
  { field: "id", headerName: "ID", width: 90 },
  {
    field: "name",
    headerName: "Name",
    flex: 1, // Grows to fill available space
  },
  {
    field: "description",
    headerName: "Description",
    flex: 1,
  },
  {
    field: "type",
    headerName: "Type",
    width: 150,
  },
];

function MyTable({ rows }: { rows: Item[] }) {
  return (
    <DataGrid
      rows={rows}
      columns={columns}
      initialState={{
        pagination: {
          paginationModel: {
            pageSize: 10,
          },
        },
      }}
      pageSizeOptions={[5, 10, 25]}
      checkboxSelection
      disableRowSelectionOnClick
    />
  );
}
```

## Common Column Options

```tsx
const columns: GridColDef[] = [
  // Fixed width
  { field: "id", headerName: "ID", width: 90 },

  // Flexible width
  { field: "name", headerName: "Name", flex: 1 },

  // Custom render
  {
    field: "status",
    headerName: "Status",
    renderCell: (params) => (
      <Chip
        label={params.value}
        color={params.value === "active" ? "success" : "default"}
      />
    ),
  },

  // Actions column
  {
    field: "actions",
    headerName: "Actions",
    sortable: false,
    renderCell: (params) => (
      <Button onClick={() => handleDelete(params.row.id)}>Delete</Button>
    ),
  },
];
```

## Server-Side Pagination

```tsx
<DataGrid
  rows={rows}
  columns={columns}
  rowCount={totalCount}
  paginationMode="server"
  paginationModel={paginationModel}
  onPaginationModelChange={setPaginationModel}
  loading={loading}
/>
```
