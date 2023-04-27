import { HashRouter, Route, Routes } from 'react-router-dom'
import Home from './Home'
import Login from './Login'
import Dashboard from './controller/home'
import Users from './controller/users'
import Companies from './controller/companies'
import CompanyDashboard from './company/home'
import CompanyCustomers from './company/customers'
import CompanyInquiries from './company/inquiries'
import CompanyReports from './company/reports'
import CompanyForm from './company/form'
import CompanyCustomer from './company/customer'

export const App = () => {
  return (
    <HashRouter>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/login' element={<Login />} />
        <Route path='/controller/home' element={<Dashboard />} />
        <Route path='/controller/users' element={<Users />} />
        <Route path='/controller/companies' element={<Companies />} />
        <Route path='/company/:company/home' element={<CompanyDashboard />} />
        <Route path='/company/:company/customers' element={<CompanyCustomers />} />
        <Route path='/company/:company/inquiries' element={<CompanyInquiries />} />
        <Route path='/company/:company/form/:inquiry' element={<CompanyForm />} />
        <Route path='/company/:company/customer/:user' element={<CompanyCustomer />} />
        <Route path='/company/:company/report/:start/:end' element={<CompanyReports />} />
      </Routes>
    </HashRouter>
  )
}

