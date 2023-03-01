export interface Renovation {
  id: number;
  inquiry_id: string;
  customer_id: number;
  user_id: number;
  date: string;
  created: string;
  property_inquiry_id: number;
  property_designated: string;
  property_type: string;
  property_status: string;
  property_layout: string;
  finance_inquiry_id: number;
  finance_terms: string;
  finance_budget: number;
  management_inquiry_id: string | null;
  management_contact: string | null;
  management_working: string | null;
  management_insurance: string | null;
  management_wireman: string | null;
  comments_inquiry_id: string | null;
  comments_comment: string | null;
  name: string,
  company: string,
  email: string,
  phone: string,
  position: string,
  address: string,
  business: string,
  size: string,
  first_name: string,
  last_name: string,
  username: string,
}
