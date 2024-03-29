interface status {
    status: string
}

export const Status = ({ status }: status) => {
    return (
        <div className={`border-2 px-4 py-1 rounded-full font-semibold tracking-wider ${status === 'active' || status === 'approved' ? 'border-green-500 text-green-500' : status === 'rejected' ? 'border-red-500 text-red-500': 'border-orange-500 text-orange-500'}`}>
            {status}
        </div>
    )
}
